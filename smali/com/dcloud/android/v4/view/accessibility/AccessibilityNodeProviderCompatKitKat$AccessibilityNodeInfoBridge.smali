.class interface abstract Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AccessibilityNodeInfoBridge"
.end annotation


# virtual methods
.method public abstract createAccessibilityNodeInfo(I)Ljava/lang/Object;
.end method

.method public abstract findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findFocus(I)Ljava/lang/Object;
.end method

.method public abstract performAction(IILandroid/os/Bundle;)Z
.end method
