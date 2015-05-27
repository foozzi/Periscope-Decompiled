.class Lo/ɩ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ʸ$if;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ī:Lo/ﹾ$if;

.field final synthetic ﻴ:Lo/ﹾ;


# direct methods
.method constructor <init>(Lo/ﹾ$if;Lo/ﹾ;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lo/ɩ;->ī:Lo/ﹾ$if;

    iput-object p2, p0, Lo/ɩ;->ﻴ:Lo/ﹾ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 132
    iget-object v0, p0, Lo/ɩ;->ﻴ:Lo/ﹾ;

    invoke-virtual {v0, p1, p2}, Lo/ﹾ;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lo/ɩ;->ﻴ:Lo/ﹾ;

    invoke-virtual {v0, p1, p2}, Lo/ﹾ;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 138
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lo/ɩ;->ﻴ:Lo/ﹾ;

    invoke-virtual {v0, p1, p2}, Lo/ﹾ;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 149
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 154
    iget-object v0, p0, Lo/ɩ;->ﻴ:Lo/ﹾ;

    invoke-virtual {v0, p1, p2, p3}, Lo/ﹾ;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lo/ɩ;->ﻴ:Lo/ﹾ;

    invoke-virtual {v0, p1, p2}, Lo/ﹾ;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 160
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lo/ɩ;->ﻴ:Lo/ﹾ;

    invoke-virtual {v0, p1, p2}, Lo/ﹾ;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 165
    return-void
.end method

.method public ˊ(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lo/ɩ;->ﻴ:Lo/ﹾ;

    new-instance v1, Lo/ﯩ;

    invoke-direct {v1, p2}, Lo/ﯩ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lo/ﹾ;->ˊ(Landroid/view/View;Lo/ﯩ;)V

    .line 144
    return-void
.end method
