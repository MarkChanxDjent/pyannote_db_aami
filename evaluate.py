import numpy as np
import matplotlib.pyplot as plt
# AMI protocol
from pyannote.database import get_protocol
protocol = get_protocol('Test.SpeakerDiarization.MixHeadset')

from pyannote.database import get_annotated

# precomputed scores
from pyannote.audio.features import Precomputed
precomputed = Precomputed('./precomputed/scd')

from pyannote.metrics.diarization import DiarizationPurityCoverageFMeasure
metric = DiarizationPurityCoverageFMeasure()

from pyannote.metrics.segmentation import SegmentationPurityCoverageFMeasure
metric = SegmentationPurityCoverageFMeasure()

# peak detection
min_duration = 1.0
from pyannote.audio.signal import Peak
# alpha / min_duration are tunable parameters (and should be tuned for better performance)
# we use log_scale = True because of the final log-softmax in the StackedRNN model

alphas = np.linspace(0, 1, 20)

purity_list = []
coverage_list = []

for alpha in alphas:

	peak = Peak(alpha=alpha, min_duration=min_duration, log_scale=True)

	# evaluation metric


	# loop on test files
	
	for test_file in protocol.test():
	  # load reference annotation
	  reference = test_file['annotation']
	  uem = get_annotated(test_file)

	  # load precomputed change scores as pyannote.core.SlidingWindowFeature
	  scd_scores = precomputed(test_file)

	  # binarize scores to obtain speech regions as pyannote.core.Timeline
	  hypothesis = peak.apply(scd_scores, dimension=1)

	  # evaluate speech activity detection
	  metric(reference, hypothesis.to_annotation(), uem=uem)

	purity, coverage, fmeasure = metric.compute_metrics()
	purity = f'{100*purity:.1f}%'
	coverage = f'{100*coverage:.1f}%'
	purity_list.append(purity)
	coverage_list.append(coverage)


plt.plot(coverage_list, purity_list, marker='o', linestyle='-')
plt.xticks(rotation=45)
plt.xlabel('Coverage')
plt.ylabel('Purity')
plt.show()



