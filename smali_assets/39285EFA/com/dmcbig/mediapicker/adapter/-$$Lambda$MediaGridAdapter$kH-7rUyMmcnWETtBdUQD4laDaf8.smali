.class public final synthetic Lcom/dmcbig/mediapicker/adapter/-$$Lambda$MediaGridAdapter$kH-7rUyMmcnWETtBdUQD4laDaf8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/-$$Lambda$MediaGridAdapter$kH-7rUyMmcnWETtBdUQD4laDaf8;->f$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    iput-object p2, p0, Lcom/dmcbig/mediapicker/adapter/-$$Lambda$MediaGridAdapter$kH-7rUyMmcnWETtBdUQD4laDaf8;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/-$$Lambda$MediaGridAdapter$kH-7rUyMmcnWETtBdUQD4laDaf8;->f$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/-$$Lambda$MediaGridAdapter$kH-7rUyMmcnWETtBdUQD4laDaf8;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->lambda$onBindViewHolder$0(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;Landroid/graphics/Bitmap;)V

    return-void
.end method
