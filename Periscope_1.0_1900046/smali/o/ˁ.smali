.class Lo/ˁ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ˁ$if;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static ˊ(Lo/ˁ$if;)Ljava/lang/Object;
    .locals 1

    .line 47
    new-instance v0, Lo/ˢ;

    invoke-direct {v0, p0}, Lo/ˢ;-><init>(Lo/ˁ$if;)V

    return-object v0
.end method

.method public static ˊ(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 104
    move-object v0, p0

    check-cast v0, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static ˎ(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 99
    move-object v0, p0

    check-cast v0, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0
.end method
