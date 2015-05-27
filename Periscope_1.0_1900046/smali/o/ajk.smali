.class public Lo/ajk;
.super Lo/ado;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lo/als$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ajk$1;
    }
.end annotation


# static fields
.field private static bHt:J

.field private static bHu:Ljava/lang/String;


# instance fields
.field private bGs:Lo/ajn;

.field private bHv:Ljava/lang/Runnable;

.field private bHw:Lo/als;

.field private bHx:Landroid/widget/EditText;

.field private byD:Lo/alo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-wide/16 v0, 0x64

    sput-wide v0, Lo/ajk;->bHt:J

    .line 28
    const-string v0, "UserSearch"

    sput-object v0, Lo/ajk;->bHu:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/ado;-><init>()V

    .line 99
    return-void
.end method

.method static synthetic Al()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lo/ajk;->bHu:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Am()J
    .locals 2

    .line 26
    sget-wide v0, Lo/ajk;->bHt:J

    return-wide v0
.end method

.method static synthetic ˊ(Lo/ajk;)Ljava/lang/Runnable;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/ajk;->bHv:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic ˋ(Lo/ajk;)Landroid/widget/EditText;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/ajk;->bHx:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic ˎ(Lo/ajk;)Lo/vn;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lo/ajk;->wZ()Lo/vn;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Aj()V
    .locals 1

    .line 124
    iget-object v0, p0, Lo/ajk;->bHx:Landroid/widget/EditText;

    invoke-static {v0}, Lo/akj;->ᔉ(Landroid/view/View;)V

    .line 125
    return-void
.end method

.method public Ak()V
    .locals 0

    .line 130
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 115
    iget-object v0, p0, Lo/ajk;->bHw:Lo/als;

    invoke-interface {v0}, Lo/als;->wY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    invoke-super {p0}, Lo/ado;->onBackPressed()V

    .line 119
    const v0, 0x7f04000a

    const v1, 0x7f04000e

    invoke-virtual {p0, v0, v1}, Lo/ajk;->overridePendingTransition(II)V

    .line 120
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    nop

    .line 108
    invoke-virtual {p0}, Lo/ajk;->onBackPressed()V

    .line 111
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 37
    invoke-super {p0, p1}, Lo/ado;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lo/ajk;->setContentView(I)V

    .line 41
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lo/ajk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    move-object v6, v0

    .line 42
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$ʻ;)V

    .line 44
    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v7

    .line 45
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lo/ajk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alo;

    iput-object v0, p0, Lo/ajk;->byD:Lo/alo;

    .line 46
    new-instance v0, Lo/adj;

    invoke-virtual {p0}, Lo/ajk;->wZ()Lo/vn;

    move-result-object v2

    iget-object v4, p0, Lo/ajk;->byD:Lo/alo;

    move-object v1, p0

    move-object v3, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lo/adj;-><init>(Landroid/content/Context;Lo/vn;Lo/aad;Lo/alo;Lo/als$if;)V

    iput-object v0, p0, Lo/ajk;->bHw:Lo/als;

    .line 48
    iget-object v0, p0, Lo/ajk;->byD:Lo/alo;

    iget-object v1, p0, Lo/ajk;->bHw:Lo/als;

    invoke-virtual {v0, v1}, Lo/alo;->setDelegate(Lo/als;)V

    .line 49
    invoke-virtual {p0}, Lo/ajk;->xa()Lo/ot;

    move-result-object v0

    iget-object v1, p0, Lo/ajk;->bHw:Lo/als;

    invoke-virtual {v0, v1}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 51
    new-instance v8, Lo/ajn;

    new-instance v0, Lo/aaa;

    invoke-direct {v0, v7}, Lo/aaa;-><init>(Lo/aad;)V

    iget-object v1, p0, Lo/ajk;->bHw:Lo/als;

    invoke-direct {v8, p0, v0, v1}, Lo/ajn;-><init>(Landroid/content/Context;Lo/zo;Lo/amw;)V

    .line 53
    invoke-virtual {v6, v8}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$if;)V

    .line 54
    iput-object v8, p0, Lo/ajk;->bGs:Lo/ajn;

    .line 56
    const v0, 0x7f0b0047

    invoke-virtual {p0, v0}, Lo/ajk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v9, v0

    .line 57
    const v0, 0x7f0b00f1

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v10, Lo/ajl;

    invoke-direct {v10, p0}, Lo/ajl;-><init>(Lo/ajk;)V

    .line 66
    const v0, 0x7f0b00f2

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lo/ajk;->bHx:Landroid/widget/EditText;

    .line 67
    iget-object v0, p0, Lo/ajk;->bHx:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    new-instance v0, Lo/ajm;

    invoke-direct {v0, p0}, Lo/ajm;-><init>(Lo/ajk;)V

    iput-object v0, p0, Lo/ajk;->bHv:Ljava/lang/Runnable;

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lo/ajk;->xa()Lo/ot;

    move-result-object v0

    iget-object v1, p0, Lo/ajk;->bHw:Lo/als;

    invoke-virtual {v0, v1}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 83
    invoke-super {p0}, Lo/ado;->onDestroy()V

    .line 84
    return-void
.end method

.method public onEventMainThread(Lo/aak;)V
    .locals 2

    .line 88
    sget-object v0, Lo/ajk$1;->brV:[I

    invoke-virtual {p1}, Lo/aak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    iget-object v0, p0, Lo/ajk;->bGs:Lo/ajn;

    invoke-virtual {v0}, Lo/ajn;->notifyDataSetChanged()V

    .line 95
    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lo/ajk;->bGs:Lo/ajn;

    invoke-virtual {v0}, Lo/ajn;->notifyDataSetChanged()V

    .line 102
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
