.class Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;
.super Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->addAction(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getAccessibilityActionId(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getAccessibilityActionId(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getAccessibilityActionLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getAccessibilityActionLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getActionList(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getActionList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getError(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getError(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getMaxTextLength(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getMaxTextLength(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getWindow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getWindow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCollectionItemSelected(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21$CollectionItemInfo;->isSelected(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->obtainCollectionInfo(IIZI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p1 .. p6}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeChild(Ljava/lang/Object;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->removeChild(Ljava/lang/Object;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public removeChild(Ljava/lang/Object;Landroid/view/View;I)Z
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->removeChild(Ljava/lang/Object;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public setError(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->setError(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMaxTextLength(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->setMaxTextLength(Ljava/lang/Object;I)V

    return-void
.end method
