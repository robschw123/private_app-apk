.class public interface abstract Lio/dcloud/sdk/core/api/AOLLoader$FeedAdLoadListener;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/sdk/core/api/AOLLoader$AdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/api/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeedAdLoadListener"
.end annotation


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onFeedAdLoad(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/api/FeedAOL;",
            ">;)V"
        }
    .end annotation
.end method
