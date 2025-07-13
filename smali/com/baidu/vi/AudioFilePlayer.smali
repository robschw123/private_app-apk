.class public Lcom/baidu/vi/AudioFilePlayer;
.super Ljava/lang/Object;
.source "AudioFilePlayer.java"


# instance fields
.field private a:Landroid/media/MediaPlayer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/baidu/vi/AudioFilePlayer;->a:Landroid/media/MediaPlayer;

    return-void
.end method

.method private native onErrorOccured(JI)Z
.end method

.method private native onPlayCompleted(J)V
.end method
