.class public Lo/ﹾ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﹾ$ˋ;,
        Lo/ﹾ$if;,
        Lo/ﹾ$ˎ;,
        Lo/ﹾ$ˊ;
    }
.end annotation


# static fields
.field private static final ﹿ:Lo/ﹾ$ˊ;

.field private static final ﺘ:Ljava/lang/Object;


# instance fields
.field final ﺫ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 296
    new-instance v0, Lo/ﹾ$ˋ;

    invoke-direct {v0}, Lo/ﹾ$ˋ;-><init>()V

    sput-object v0, Lo/ﹾ;->ﹿ:Lo/ﹾ$ˊ;

    goto :goto_0

    .line 297
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 298
    new-instance v0, Lo/ﹾ$if;

    invoke-direct {v0}, Lo/ﹾ$if;-><init>()V

    sput-object v0, Lo/ﹾ;->ﹿ:Lo/ﹾ$ˊ;

    goto :goto_0

    .line 300
    :cond_1
    new-instance v0, Lo/ﹾ$ˎ;

    invoke-direct {v0}, Lo/ﹾ$ˎ;-><init>()V

    sput-object v0, Lo/ﹾ;->ﹿ:Lo/ﹾ$ˊ;

    .line 302
    :goto_0
    sget-object v0, Lo/ﹾ;->ﹿ:Lo/ﹾ$ˊ;

    invoke-interface {v0}, Lo/ﹾ$ˊ;->ᵣ()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lo/ﹾ;->ﺘ:Ljava/lang/Object;

    .line 303
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    sget-object v0, Lo/ﹾ;->ﹿ:Lo/ﹾ$ˊ;

    invoke-interface {v0, p0}, Lo/ﹾ$ˊ;->ˊ(Lo/ﹾ;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/ﹾ;->ﺫ:Ljava/lang/Object;

    .line 312
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 379
    sget-object v0, Lo/ﹾ;->ﹿ:Lo/ﹾ$ˊ;

    sget-object v1, Lo/ﹾ;->ﺘ:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lo/ﹾ$ˊ;->ˊ(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 419
    sget-object v0, Lo/ﹾ;->ﹿ:Lo/ﹾ$ˊ;

    sget-object v1, Lo/ﹾ;->ﺘ:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lo/ﹾ$ˊ;->ˋ(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 420
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 399
    sget-object v0, Lo/ﹾ;->ﹿ:Lo/ﹾ$ˊ;

    sget-object v1, Lo/ﹾ;->ﺘ:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lo/ﹾ$ˊ;->ˎ(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 400
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 462
    sget-object v0, Lo/ﹾ;->ﹿ:Lo/ﹾ$ˊ;

    sget-object v1, Lo/ﹾ;->ﺘ:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lo/ﹾ$ˊ;->ˊ(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 500
    sget-object v0, Lo/ﹾ;->ﹿ:Lo/ﹾ$ˊ;

    sget-object v1, Lo/ﹾ;->ﺘ:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lo/ﹾ$ˊ;->ˊ(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 2

    .line 336
    sget-object v0, Lo/ﹾ;->ﹿ:Lo/ﹾ$ˊ;

    sget-object v1, Lo/ﹾ;->ﺘ:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lo/ﹾ$ˊ;->ˊ(Ljava/lang/Object;Landroid/view/View;I)V

    .line 337
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 358
    sget-object v0, Lo/ﹾ;->ﹿ:Lo/ﹾ$ˊ;

    sget-object v1, Lo/ﹾ;->ﺘ:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lo/ﹾ$ˊ;->ˏ(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 359
    return-void
.end method

.method public ˊ(Landroid/view/View;Lo/ﯩ;)V
    .locals 2

    .line 438
    sget-object v0, Lo/ﹾ;->ﹿ:Lo/ﹾ$ˊ;

    sget-object v1, Lo/ﹾ;->ﺘ:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lo/ﹾ$ˊ;->ˊ(Ljava/lang/Object;Landroid/view/View;Lo/ﯩ;)V

    .line 439
    return-void
.end method

.method public ᐝ(Landroid/view/View;)Lo/＿;
    .locals 2

    .line 480
    sget-object v0, Lo/ﹾ;->ﹿ:Lo/ﹾ$ˊ;

    sget-object v1, Lo/ﹾ;->ﺘ:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lo/ﹾ$ˊ;->ˋ(Ljava/lang/Object;Landroid/view/View;)Lo/＿;

    move-result-object v0

    return-object v0
.end method

.method ᵕ()Ljava/lang/Object;
    .locals 1

    .line 318
    iget-object v0, p0, Lo/ﹾ;->ﺫ:Ljava/lang/Object;

    return-object v0
.end method
