.class Lio/dcloud/feature/weex/extend/PlusModule$JsData;
.super Ljava/lang/Object;
.source "PlusModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/extend/PlusModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JsData"
.end annotation


# instance fields
.field public data:Ljava/lang/String;

.field final synthetic this$0:Lio/dcloud/feature/weex/extend/PlusModule;

.field public value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/PlusModule;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "data",
            "value"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/PlusModule$JsData;->this$0:Lio/dcloud/feature/weex/extend/PlusModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Lio/dcloud/feature/weex/extend/PlusModule$JsData;->data:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lio/dcloud/feature/weex/extend/PlusModule$JsData;->value:Ljava/lang/String;

    return-void
.end method
