.class public Lo/ajq;
.super Landroid/support/v7/widget/RecyclerView$if;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$if<Lo/akc;>;"
    }
.end annotation


# instance fields
.field private final bHI:Lo/aag;

.field private final bHJ:Lo/akd;

.field private final bHK:Lo/akb;


# direct methods
.method public constructor <init>(Lo/aag;Lo/akd;Lo/akb;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$if;-><init>()V

    .line 31
    iput-object p1, p0, Lo/ajq;->bHI:Lo/aag;

    .line 32
    iput-object p2, p0, Lo/ajq;->bHJ:Lo/akd;

    .line 33
    iput-object p3, p0, Lo/ajq;->bHK:Lo/akb;

    .line 34
    return-void
.end method

.method public constructor <init>(Lo/aag;Lo/amw;)V
    .locals 2

    .line 26
    invoke-static {p2}, Lo/ajq;->ˊ(Lo/amw;)Lo/akd;

    move-result-object v0

    new-instance v1, Lo/akb;

    invoke-direct {v1}, Lo/akb;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lo/ajq;-><init>(Lo/aag;Lo/akd;Lo/akb;)V

    .line 27
    return-void
.end method

.method private static ˊ(Lo/amw;)Lo/akd;
    .locals 1

    .line 37
    new-instance v0, Lo/ajr;

    invoke-direct {v0, p0}, Lo/ajr;-><init>(Lo/amw;)V

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Lo/ajq;->bHI:Lo/aag;

    invoke-virtual {v0}, Lo/aag;->vc()I

    move-result v0

    return v0
.end method

.method public ʽ(Landroid/view/ViewGroup;I)Lo/akc;
    .locals 4

    .line 64
    sparse-switch p2, :sswitch_data_0

    nop

    .line 67
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030056

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 69
    new-instance v0, Lo/akc;

    iget-object v1, p0, Lo/ajq;->bHJ:Lo/akd;

    const v2, 0x7f0b00fc

    invoke-direct {v0, v3, v1, v2}, Lo/akc;-><init>(Landroid/view/View;Lo/akd;I)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;I)V
    .locals 1

    .line 18
    move-object v0, p1

    check-cast v0, Lo/akc;

    invoke-virtual {p0, v0, p2}, Lo/ajq;->ˊ(Lo/akc;I)V

    return-void
.end method

.method public ˊ(Lo/aah;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lo/ajq;->bHI:Lo/aag;

    invoke-virtual {v0, p1}, Lo/aag;->ˊ(Lo/aah;)V

    .line 56
    return-void
.end method

.method public ˊ(Lo/akc;I)V
    .locals 2

    .line 76
    invoke-virtual {p0, p2}, Lo/ajq;->ٳ(I)Ltv/periscope/android/api/PsUser;

    move-result-object v1

    .line 77
    iget-object v0, p0, Lo/ajq;->bHK:Lo/akb;

    invoke-virtual {v0, p1, v1, p2}, Lo/akb;->ˊ(Lo/akc;Ltv/periscope/android/api/PsUser;I)V

    .line 78
    return-void
.end method

.method public synthetic ˎ(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 1

    .line 18
    invoke-virtual {p0, p1, p2}, Lo/ajq;->ʽ(Landroid/view/ViewGroup;I)Lo/akc;

    move-result-object v0

    return-object v0
.end method

.method public ٳ(I)Ltv/periscope/android/api/PsUser;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/ajq;->bHI:Lo/aag;

    invoke-virtual {v0, p1}, Lo/aag;->ﾝ(I)Ltv/periscope/android/api/PsUser;

    move-result-object v0

    return-object v0
.end method

.method public ﯧ(Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lo/ajq;->bHI:Lo/aag;

    invoke-virtual {v0, p1}, Lo/aag;->ﯧ(Ljava/lang/String;)V

    .line 60
    return-void
.end method
