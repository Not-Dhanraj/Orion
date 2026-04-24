class VideoQuality {
  final String label;
  final int? maxHeight;
  final int? maxBitrate;

  const VideoQuality({required this.label, this.maxHeight, this.maxBitrate});

  @override
  bool operator ==(Object other) =>
      other is VideoQuality &&
      other.label == label &&
      other.maxHeight == maxHeight &&
      other.maxBitrate == maxBitrate;

  @override
  int get hashCode => Object.hash(label, maxHeight, maxBitrate);
}

const VideoQuality kAutoQuality = VideoQuality(label: 'Auto');

const List<VideoQuality> kBaseVideoQualities = [
  VideoQuality(label: '120 Mbps', maxHeight: 2160, maxBitrate: 120000000),
  VideoQuality(label: '80 Mbps', maxHeight: 2160, maxBitrate: 80000000),
  VideoQuality(label: '60 Mbps', maxHeight: 2160, maxBitrate: 60000000),
  VideoQuality(label: '40 Mbps', maxHeight: 2160, maxBitrate: 40000000),
  VideoQuality(label: '20 Mbps', maxHeight: 1080, maxBitrate: 20000000),
  VideoQuality(label: '15 Mbps', maxHeight: 1080, maxBitrate: 15000000),
  VideoQuality(label: '10 Mbps', maxHeight: 1080, maxBitrate: 10000000),
  VideoQuality(label: '8 Mbps', maxHeight: 1080, maxBitrate: 8000000),
  VideoQuality(label: '6 Mbps', maxHeight: 720, maxBitrate: 6000000),
  VideoQuality(label: '4 Mbps', maxHeight: 720, maxBitrate: 4000000),
  VideoQuality(label: '3 Mbps', maxHeight: 480, maxBitrate: 3000000),
  VideoQuality(label: '1.5 Mbps', maxHeight: 480, maxBitrate: 1500000),
  VideoQuality(label: '720 kbps', maxHeight: 360, maxBitrate: 720000),
  VideoQuality(label: '420 kbps', maxHeight: 240, maxBitrate: 420000),
];
