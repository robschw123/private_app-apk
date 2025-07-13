.class public Lio/dcloud/js/map/adapter/MapRoute$MapLine;
.super Ljava/lang/Object;
.source "MapRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/js/map/adapter/MapRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MapLine"
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/js/map/adapter/MapRoute;


# direct methods
.method protected constructor <init>(Lio/dcloud/js/map/adapter/MapRoute;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapRoute$MapLine;->this$0:Lio/dcloud/js/map/adapter/MapRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
