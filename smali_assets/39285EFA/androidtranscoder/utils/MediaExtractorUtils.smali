.class public Landroidtranscoder/utils/MediaExtractorUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFirstVideoAndAudioTrack(Landroid/media/MediaExtractor;)Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;
    .locals 6

    .line 1
    new-instance v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;-><init>(Landroidtranscoder/utils/MediaExtractorUtils$1;)V

    const/4 v1, -0x1

    .line 2
    iput v1, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    .line 3
    iput v1, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    .line 4
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 6
    invoke-virtual {p0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    .line 7
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    iget v5, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    if-gez v5, :cond_0

    const-string/jumbo v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    iput v2, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    .line 10
    iput-object v4, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackMime:Ljava/lang/String;

    .line 11
    iput-object v3, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackFormat:Landroid/media/MediaFormat;

    goto :goto_1

    .line 12
    :cond_0
    iget v5, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    if-gez v5, :cond_1

    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 13
    iput v2, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    .line 14
    iput-object v4, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackMime:Ljava/lang/String;

    .line 15
    iput-object v3, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackFormat:Landroid/media/MediaFormat;

    .line 17
    :cond_1
    :goto_1
    iget v3, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    if-ltz v3, :cond_2

    iget v3, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    if-ltz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_3
    :goto_2
    iget p0, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    if-ltz p0, :cond_4

    iget p0, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    if-ltz p0, :cond_4

    return-object v0

    .line 20
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "extractor does not contain video and/or audio tracks."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method
