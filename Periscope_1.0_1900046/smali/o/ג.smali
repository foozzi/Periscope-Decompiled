.class final Lo/ג;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Г:Lo/ϊ$if;


# direct methods
.method constructor <init>(Lo/ϊ$if;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lo/ג;->Г:Lo/ϊ$if;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/ג;->Г:Lo/ϊ$if;

    invoke-interface {v0, p1}, Lo/ϊ$if;->ᵎ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;I)Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lo/ג;->Г:Lo/ϊ$if;

    invoke-interface {v0, p1, p2}, Lo/ϊ$if;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/ג;->Г:Lo/ϊ$if;

    invoke-interface {v0, p1}, Lo/ϊ$if;->ᵔ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lo/ג;->Г:Lo/ϊ$if;

    invoke-interface {v0, p1, p2, p3}, Lo/ϊ$if;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
