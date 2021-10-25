// Copyright (C) 2021 d1y <chenhonzhou@gmail.com>
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

enum MirrorSerializeVideoType {
  iframe,

  m3u8,

  mp4,
}

class MirrorSerializeVideoSize {
  /// 宽
  final double x;

  /// 高
  final double y;

  /// 视频长度
  final double duration;

  /// 视频大小
  /// TODO 视频大小应该在 [MirrorSerializeVideoInfo] 中包含
  final double size;

  /// TODO
  /// 格式化视频大小
  get humanSize {}

  /// TODO
  /// 格式化视频时间
  get humanDuration {}

  const MirrorSerializeVideoSize({
    this.x = 0,
    this.y = 0,
    this.duration = 0,
    this.size = 0,
  });
}

const MirrorSerializeVideoSize kDefaultVideoSiz = MirrorSerializeVideoSize();

class MirrorSerializeVideoInfo {
  final String name;

  final MirrorSerializeVideoType type;

  final String url;

  MirrorSerializeVideoInfo({
    this.name = "未命名",
    this.type = MirrorSerializeVideoType.iframe,
    required this.url,
  });
}

class MirrorOnceItemSerialize {
  /// id
  final String id;

  /// 标题
  final String title;

  /// 介绍
  final String desc;

  /// 喜欢
  final int likeCount;

  /// 访问人数
  final int viewCount;

  /// 不喜欢
  final int dislikeCount;

  /// 小封面图(必须要有)
  final String smallCoverImage;

  /// 大封面图
  final String bigCoverImage;

  /// 视频列表
  final List<MirrorSerializeVideoInfo> videos;

  /// 视频信息
  /// 视频尺寸大小
  /// 视频长度大小
  final MirrorSerializeVideoSize videoInfo;

  MirrorOnceItemSerialize({
    required this.id,
    required this.title,
    this.desc = "",
    this.likeCount = 0,
    this.viewCount = 0,
    this.dislikeCount = 0,
    this.bigCoverImage = "",
    required this.smallCoverImage,
    this.videoInfo = kDefaultVideoSiz,
    this.videos = const [],
  });
}
