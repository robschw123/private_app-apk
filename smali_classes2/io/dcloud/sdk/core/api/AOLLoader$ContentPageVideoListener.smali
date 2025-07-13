.class public interface abstract Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/api/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentPageVideoListener"
.end annotation


# virtual methods
.method public abstract onComplete(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V
.end method

.method public abstract onError(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V
.end method

.method public abstract onPause(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V
.end method

.method public abstract onResume(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V
.end method

.method public abstract onStart(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V
.end method
