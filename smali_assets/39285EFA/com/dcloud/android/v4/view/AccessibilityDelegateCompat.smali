.class public Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;,
        Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;,
        Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;,
        Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELEGATE:Ljava/lang/Object;

.field private static final IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;


# instance fields
.field final mBridge:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    .line 8
    :goto_0
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    invoke-interface {v0}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->newAccessiblityDelegateDefaultImpl()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->newAccessiblityDelegateBridge(Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->mBridge:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->getAccessibilityNodeProvider(Ljava/lang/Object;Landroid/view/View;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p1

    return-object p1
.end method

.method getBridge()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->mBridge:Ljava/lang/Object;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->performAccessibilityAction(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
