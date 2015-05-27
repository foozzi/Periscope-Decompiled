.class public Lo/ᵘ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᵘ$1;,
        Lo/ᵘ$ˏ;,
        Lo/ᵘ$ˋ;,
        Lo/ᵘ$ˎ;,
        Lo/ᵘ$ˊ;,
        Lo/ᵘ$if;,
        Lo/ᵘ$aux;
    }
.end annotation


# static fields
.field static final Ī:Lo/ᵘ$aux;


# instance fields
.field private ﺪ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
        }
    .end annotation
.end field

.field private ﺭ:Ljava/lang/Runnable;

.field private ｊ:Ljava/lang/Runnable;

.field private ｭ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 599
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 600
    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 601
    new-instance v0, Lo/ᵘ$ˏ;

    invoke-direct {v0}, Lo/ᵘ$ˏ;-><init>()V

    sput-object v0, Lo/ᵘ;->Ī:Lo/ᵘ$aux;

    goto :goto_0

    .line 602
    :cond_0
    const/16 v0, 0x12

    if-lt v1, v0, :cond_1

    .line 603
    new-instance v0, Lo/ᵘ$ˋ;

    invoke-direct {v0}, Lo/ᵘ$ˋ;-><init>()V

    sput-object v0, Lo/ᵘ;->Ī:Lo/ᵘ$aux;

    goto :goto_0

    .line 604
    :cond_1
    const/16 v0, 0x10

    if-lt v1, v0, :cond_2

    .line 605
    new-instance v0, Lo/ᵘ$ˎ;

    invoke-direct {v0}, Lo/ᵘ$ˎ;-><init>()V

    sput-object v0, Lo/ᵘ;->Ī:Lo/ᵘ$aux;

    goto :goto_0

    .line 606
    :cond_2
    const/16 v0, 0xe

    if-lt v1, v0, :cond_3

    .line 607
    new-instance v0, Lo/ᵘ$ˊ;

    invoke-direct {v0}, Lo/ᵘ$ˊ;-><init>()V

    sput-object v0, Lo/ᵘ;->Ī:Lo/ᵘ$aux;

    goto :goto_0

    .line 609
    :cond_3
    new-instance v0, Lo/ᵘ$if;

    invoke-direct {v0}, Lo/ᵘ$if;-><init>()V

    sput-object v0, Lo/ᵘ;->Ī:Lo/ᵘ$aux;

    .line 611
    :goto_0
    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᵘ;->ﺭ:Ljava/lang/Runnable;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᵘ;->ｊ:Ljava/lang/Runnable;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lo/ᵘ;->ｭ:I

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/ᵘ;->ﺪ:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method

.method static synthetic ˊ(Lo/ᵘ;I)I
    .locals 0

    .line 24
    iput p1, p0, Lo/ᵘ;->ｭ:I

    return p1
.end method

.method static synthetic ˊ(Lo/ᵘ;)Ljava/lang/Runnable;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/ᵘ;->ﺭ:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic ˋ(Lo/ᵘ;)Ljava/lang/Runnable;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/ᵘ;->ｊ:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic ˎ(Lo/ᵘ;)I
    .locals 1

    .line 24
    iget v0, p0, Lo/ᵘ;->ｭ:I

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1000
    iget-object v0, p0, Lo/ᵘ;->ﺪ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    if-eqz v1, :cond_0

    .line 1001
    sget-object v0, Lo/ᵘ;->Ī:Lo/ᵘ$aux;

    invoke-interface {v0, p0, v1}, Lo/ᵘ$aux;->ˊ(Lo/ᵘ;Landroid/view/View;)V

    .line 1003
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 1118
    iget-object v0, p0, Lo/ᵘ;->ﺪ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    if-eqz v1, :cond_0

    .line 1119
    sget-object v0, Lo/ᵘ;->Ī:Lo/ᵘ$aux;

    invoke-interface {v0, p0, v1}, Lo/ᵘ$aux;->ˋ(Lo/ᵘ;Landroid/view/View;)V

    .line 1121
    :cond_0
    return-void
.end method

.method public ʻ(F)Lo/ᵘ;
    .locals 2

    .line 938
    iget-object v0, p0, Lo/ᵘ;->ﺪ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    if-eqz v1, :cond_0

    .line 939
    sget-object v0, Lo/ᵘ;->Ī:Lo/ᵘ$aux;

    invoke-interface {v0, p0, v1, p1}, Lo/ᵘ$aux;->ˏ(Lo/ᵘ;Landroid/view/View;F)V

    .line 941
    :cond_0
    return-object p0
.end method

.method public ʼ(F)Lo/ᵘ;
    .locals 2

    .line 972
    iget-object v0, p0, Lo/ᵘ;->ﺪ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    if-eqz v1, :cond_0

    .line 973
    sget-object v0, Lo/ᵘ;->Ī:Lo/ᵘ$aux;

    invoke-interface {v0, p0, v1, p1}, Lo/ᵘ$aux;->ᐝ(Lo/ᵘ;Landroid/view/View;F)V

    .line 975
    :cond_0
    return-object p0
.end method

.method public ˊ(J)Lo/ᵘ;
    .locals 2

    .line 626
    iget-object v0, p0, Lo/ᵘ;->ﺪ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    if-eqz v1, :cond_0

    .line 627
    sget-object v0, Lo/ᵘ;->Ī:Lo/ᵘ$aux;

    invoke-interface {v0, p0, v1, p1, p2}, Lo/ᵘ$aux;->ˊ(Lo/ᵘ;Landroid/view/View;J)V

    .line 629
    :cond_0
    return-object p0
.end method

.method public ˊ(Landroid/view/animation/Interpolator;)Lo/ᵘ;
    .locals 2

    .line 766
    iget-object v0, p0, Lo/ᵘ;->ﺪ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    if-eqz v1, :cond_0

    .line 767
    sget-object v0, Lo/ᵘ;->Ī:Lo/ᵘ$aux;

    invoke-interface {v0, p0, v1, p1}, Lo/ᵘ$aux;->ˊ(Lo/ᵘ;Landroid/view/View;Landroid/view/animation/Interpolator;)V

    .line 769
    :cond_0
    return-object p0
.end method

.method public ˊ(Lo/ﭔ;)Lo/ᵘ;
    .locals 2

    .line 1198
    iget-object v0, p0, Lo/ᵘ;->ﺪ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    if-eqz v1, :cond_0

    .line 1199
    sget-object v0, Lo/ᵘ;->Ī:Lo/ᵘ$aux;

    invoke-interface {v0, p0, v1, p1}, Lo/ᵘ$aux;->ˊ(Lo/ᵘ;Landroid/view/View;Lo/ﭔ;)V

    .line 1201
    :cond_0
    return-object p0
.end method

.method public ˎ(F)Lo/ᵘ;
    .locals 2

    .line 643
    iget-object v0, p0, Lo/ᵘ;->ﺪ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    if-eqz v1, :cond_0

    .line 644
    sget-object v0, Lo/ᵘ;->Ī:Lo/ᵘ$aux;

    invoke-interface {v0, p0, v1, p1}, Lo/ᵘ$aux;->ˊ(Lo/ᵘ;Landroid/view/View;F)V

    .line 646
    :cond_0
    return-object p0
.end method

.method public ˏ(F)Lo/ᵘ;
    .locals 2

    .line 677
    iget-object v0, p0, Lo/ᵘ;->ﺪ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    if-eqz v1, :cond_0

    .line 678
    sget-object v0, Lo/ᵘ;->Ī:Lo/ᵘ$aux;

    invoke-interface {v0, p0, v1, p1}, Lo/ᵘ$aux;->ˋ(Lo/ᵘ;Landroid/view/View;F)V

    .line 680
    :cond_0
    return-object p0
.end method

.method public ᐝ(F)Lo/ᵘ;
    .locals 2

    .line 694
    iget-object v0, p0, Lo/ᵘ;->ﺪ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    if-eqz v1, :cond_0

    .line 695
    sget-object v0, Lo/ᵘ;->Ī:Lo/ᵘ$aux;

    invoke-interface {v0, p0, v1, p1}, Lo/ᵘ$aux;->ˎ(Lo/ᵘ;Landroid/view/View;F)V

    .line 697
    :cond_0
    return-object p0
.end method
