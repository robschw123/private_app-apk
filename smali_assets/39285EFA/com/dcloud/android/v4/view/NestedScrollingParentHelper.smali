.class public Lcom/dcloud/android/v4/view/NestedScrollingParentHelper;
.super Ljava/lang/Object;


# instance fields
.field private mNestedScrollAxes:I

.field private final mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/android/v4/view/NestedScrollingParentHelper;->mViewGroup:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingParentHelper;->mNestedScrollAxes:I

    return v0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/dcloud/android/v4/view/NestedScrollingParentHelper;->mNestedScrollAxes:I

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/dcloud/android/v4/view/NestedScrollingParentHelper;->mNestedScrollAxes:I

    return-void
.end method
