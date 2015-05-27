.class Lo/Ӏ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˋ(Landroid/view/View;I)Z
    .locals 1

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public static ˎ(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    .line 39
    move-object v0, p1

    check-cast v0, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 40
    return-void
.end method

.method public static ˎ(Landroid/view/View;I)Z
    .locals 1

    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method
