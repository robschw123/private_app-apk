.class Lcom/dcloud/android/v4/view/ViewCompat$LollipopViewCompatImpl;
.super Lcom/dcloud/android/v4/view/ViewCompat$KitKatViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->dispatchApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->dispatchNestedFling(Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->dispatchNestedPreFling(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 0

    .line 1
    invoke-static/range {p1 .. p6}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result p1

    return p1
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    return-object p1
.end method

.method public getElevation(Landroid/view/View;)F
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->getElevation(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->getTranslationZ(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public getZ(Landroid/view/View;)F
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->getZ(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->onApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/dcloud/android/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/dcloud/android/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->setTranslationZ(Landroid/view/View;F)V

    return-void
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->startNestedScroll(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method
