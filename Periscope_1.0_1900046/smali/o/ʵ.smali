.class Lo/ʵ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ˁ$if;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ĭ:Lo/ﹾ$ˋ;

.field final synthetic ﻴ:Lo/ﹾ;


# direct methods
.method constructor <init>(Lo/ﹾ$ˋ;Lo/ﹾ;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lo/ʵ;->ĭ:Lo/ﹾ$ˋ;

    iput-object p2, p0, Lo/ʵ;->ﻴ:Lo/ﹾ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 223
    iget-object v0, p0, Lo/ʵ;->ﻴ:Lo/ﹾ;

    invoke-virtual {v0, p1, p2}, Lo/ﹾ;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lo/ʵ;->ﻴ:Lo/ﹾ;

    invoke-virtual {v0, p1, p2}, Lo/ﹾ;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 229
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lo/ʵ;->ﻴ:Lo/ﹾ;

    invoke-virtual {v0, p1, p2}, Lo/ﹾ;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 240
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 245
    iget-object v0, p0, Lo/ʵ;->ﻴ:Lo/ﹾ;

    invoke-virtual {v0, p1, p2, p3}, Lo/ﹾ;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 267
    iget-object v0, p0, Lo/ʵ;->ﻴ:Lo/ﹾ;

    invoke-virtual {v0, p1, p2, p3}, Lo/ﹾ;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 250
    iget-object v0, p0, Lo/ʵ;->ﻴ:Lo/ﹾ;

    invoke-virtual {v0, p1, p2}, Lo/ﹾ;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 251
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lo/ʵ;->ﻴ:Lo/ﹾ;

    invoke-virtual {v0, p1, p2}, Lo/ﹾ;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 256
    return-void
.end method

.method public ʻ(Landroid/view/View;)Ljava/lang/Object;
    .locals 2

    .line 260
    iget-object v0, p0, Lo/ʵ;->ﻴ:Lo/ﹾ;

    invoke-virtual {v0, p1}, Lo/ﹾ;->ᐝ(Landroid/view/View;)Lo/＿;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/＿;->ו()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public ˊ(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lo/ʵ;->ﻴ:Lo/ﹾ;

    new-instance v1, Lo/ﯩ;

    invoke-direct {v1, p2}, Lo/ﯩ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lo/ﹾ;->ˊ(Landroid/view/View;Lo/ﯩ;)V

    .line 235
    return-void
.end method
