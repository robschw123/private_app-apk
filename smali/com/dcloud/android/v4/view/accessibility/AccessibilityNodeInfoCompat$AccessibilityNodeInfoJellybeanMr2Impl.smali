.class Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;
.super Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoJellybeanMr2Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public findAccessibilityNodeInfosByViewId(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->findAccessibilityNodeInfosByViewId(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTextSelectionEnd(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->getTextSelectionEnd(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getTextSelectionStart(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->getTextSelectionStart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isEditable(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->isEditable(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public refresh(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->refresh(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setEditable(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->setEditable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setTextSelection(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->setTextSelection(Ljava/lang/Object;II)V

    return-void
.end method

.method public setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
