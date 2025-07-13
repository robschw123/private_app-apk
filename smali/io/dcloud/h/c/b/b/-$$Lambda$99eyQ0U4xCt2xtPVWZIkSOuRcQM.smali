.class public final synthetic Lio/dcloud/h/c/b/b/-$$Lambda$99eyQ0U4xCt2xtPVWZIkSOuRcQM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/h/c/b/b/a;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/h/c/b/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/h/c/b/b/-$$Lambda$99eyQ0U4xCt2xtPVWZIkSOuRcQM;->f$0:Lio/dcloud/h/c/b/b/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/dcloud/h/c/b/b/-$$Lambda$99eyQ0U4xCt2xtPVWZIkSOuRcQM;->f$0:Lio/dcloud/h/c/b/b/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
