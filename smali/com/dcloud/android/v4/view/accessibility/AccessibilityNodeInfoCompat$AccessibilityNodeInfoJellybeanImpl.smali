.class Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;
.super Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoJellybeanImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addChild(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->addChild(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public findFocus(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->findFocus(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMovementGranularities(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->getMovementGranularities(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->isAccessibilityFocused(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isVisibleToUser(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->isVisibleToUser(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public obtain(Landroid/view/View;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->obtain(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setAccessibilityFocused(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setAccesibilityFocused(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setMovementGranularities(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setMovementGranularities(Ljava/lang/Object;I)V

    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setParent(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setSource(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public setVisibleToUser(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setVisibleToUser(Ljava/lang/Object;Z)V

    return-void
.end method
