.class public interface abstract Lio/dcloud/sdk/core/api/AOLLoader$DrawAdLoadListener;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/sdk/core/api/AOLLoader$AdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/api/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrawAdLoadListener"
.end annotation


# virtual methods
.method public abstract onDrawAdLoad(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/api/DrawAOL;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method
