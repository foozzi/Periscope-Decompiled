.class public Lo/ake;
.super Lo/ado;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ake$1;
    }
.end annotation


# instance fields
.field private bIg:Lo/ajq;

.field private bIh:Lo/adj;

.field private bIi:Ljava/lang/String;

.field private bnA:Lo/aad;

.field private byD:Lo/alo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/ado;-><init>()V

    .line 109
    return-void
.end method

.method private ƚ(Ljava/lang/String;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lo/ake;->bnA:Lo/aad;

    invoke-virtual {v0, p1}, Lo/aad;->נּ(Ljava/lang/String;)Ltv/periscope/android/api/PsUser;

    move-result-object v1

    .line 121
    if-nez v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lo/ake;->wZ()Lo/vn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/vn;->ว(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lo/ake;->bIi:Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_0
    invoke-direct {p0, v1}, Lo/ake;->ˏ(Ltv/periscope/android/api/PsUser;)V

    .line 127
    :goto_0
    return-void
.end method

.method private ˏ(Ltv/periscope/android/api/PsUser;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lo/ake;->bIh:Lo/adj;

    iget-object v1, p1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/adj;->ƚ(Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ake;->bIi:Ljava/lang/String;

    .line 132
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 183
    iget-object v0, p0, Lo/ake;->bIh:Lo/adj;

    invoke-virtual {v0}, Lo/adj;->wY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    return-void

    .line 186
    :cond_0
    invoke-super {p0}, Lo/ado;->onBackPressed()V

    .line 187
    const v0, 0x7f04000a

    const v1, 0x7f04000f

    invoke-virtual {p0, v0, v1}, Lo/ake;->overridePendingTransition(II)V

    .line 189
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 175
    :sswitch_0
    invoke-virtual {p0}, Lo/ake;->onBackPressed()V

    .line 179
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b00bc -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 41
    invoke-super {p0, p1}, Lo/ado;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lo/ake;->setContentView(I)V

    .line 45
    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v0

    iput-object v0, p0, Lo/ake;->bnA:Lo/aad;

    .line 46
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lo/ake;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alo;

    iput-object v0, p0, Lo/ake;->byD:Lo/alo;

    .line 47
    new-instance v0, Lo/adj;

    invoke-virtual {p0}, Lo/ake;->wZ()Lo/vn;

    move-result-object v1

    iget-object v2, p0, Lo/ake;->bnA:Lo/aad;

    iget-object v3, p0, Lo/ake;->byD:Lo/alo;

    invoke-direct {v0, p0, v1, v2, v3}, Lo/adj;-><init>(Landroid/content/Context;Lo/vn;Lo/aad;Lo/alo;)V

    iput-object v0, p0, Lo/ake;->bIh:Lo/adj;

    .line 48
    invoke-virtual {p0}, Lo/ake;->xa()Lo/ot;

    move-result-object v0

    iget-object v1, p0, Lo/ake;->bIh:Lo/adj;

    invoke-virtual {v0, v1}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lo/ake;->byD:Lo/alo;

    iget-object v1, p0, Lo/ake;->bIh:Lo/adj;

    invoke-virtual {v0, v1}, Lo/alo;->setDelegate(Lo/als;)V

    .line 51
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lo/ake;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    move-object v4, v0

    .line 52
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$ʻ;)V

    .line 53
    new-instance v5, Lo/ajq;

    new-instance v0, Lo/aag;

    iget-object v1, p0, Lo/ake;->bnA:Lo/aad;

    invoke-direct {v0, v1}, Lo/aag;-><init>(Lo/aad;)V

    iget-object v1, p0, Lo/ake;->bIh:Lo/adj;

    invoke-direct {v5, v0, v1}, Lo/ajq;-><init>(Lo/aag;Lo/amw;)V

    .line 55
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$if;)V

    .line 56
    iput-object v5, p0, Lo/ake;->bIg:Lo/ajq;

    .line 58
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lo/ake;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amt;

    move-object v6, v0

    .line 59
    const v0, 0x7f0b00bc

    invoke-virtual {v6, v0}, Lo/amt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const/4 v7, 0x0

    .line 63
    const/4 v8, 0x0

    .line 64
    invoke-virtual {p0}, Lo/ake;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 65
    if-eqz v9, :cond_0

    .line 66
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 67
    if-eqz v10, :cond_0

    .line 68
    const-string v0, "e_user_type"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lo/aah;

    move-object v8, v0

    .line 69
    const-string v0, "e_user_id"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 70
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lo/ake;->bIg:Lo/ajq;

    invoke-virtual {v0, v7}, Lo/ajq;->ﯧ(Ljava/lang/String;)V

    .line 75
    :cond_0
    if-nez v8, :cond_1

    .line 76
    sget-object v8, Lo/aah;->bsL:Lo/aah;

    .line 79
    :cond_1
    iget-object v0, p0, Lo/ake;->bIg:Lo/ajq;

    invoke-virtual {v0, v8}, Lo/ajq;->ˊ(Lo/aah;)V

    .line 81
    sget-object v0, Lo/ake$1;->bsG:[I

    invoke-virtual {v8}, Lo/aah;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 85
    :pswitch_0
    const v0, 0x7f0600cc

    invoke-virtual {v6, v0}, Lo/amt;->setTitle(I)V

    .line 86
    goto :goto_0

    .line 89
    :pswitch_1
    const v0, 0x7f06008e

    invoke-virtual {v6, v0}, Lo/amt;->setTitle(I)V

    .line 90
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0}, Lo/ake;->wZ()Lo/vn;

    move-result-object v0

    invoke-virtual {v0}, Lo/vn;->tT()Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0}, Lo/ake;->wZ()Lo/vn;

    move-result-object v0

    invoke-virtual {v0, v7}, Lo/vn;->ᓑ(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    goto :goto_0

    .line 98
    :pswitch_2
    const v0, 0x7f060090

    invoke-virtual {v6, v0}, Lo/amt;->setTitle(I)V

    .line 99
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {p0}, Lo/ake;->wZ()Lo/vn;

    move-result-object v0

    invoke-virtual {v0}, Lo/vn;->tU()Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p0}, Lo/ake;->wZ()Lo/vn;

    move-result-object v0

    invoke-virtual {v0, v7}, Lo/vn;->ᒼ(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    goto :goto_0

    .line 107
    :pswitch_3
    const v0, 0x7f06002a

    invoke-virtual {v6, v0}, Lo/amt;->setTitle(I)V

    .line 108
    invoke-virtual {p0}, Lo/ake;->wZ()Lo/vn;

    move-result-object v0

    invoke-virtual {v0}, Lo/vn;->tV()Ljava/lang/String;

    .line 113
    :goto_0
    const-string v0, "e_sheet_user_id"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 114
    if-eqz v10, :cond_4

    .line 115
    invoke-direct {p0, v10}, Lo/ake;->ƚ(Ljava/lang/String;)V

    .line 117
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 193
    invoke-virtual {p0}, Lo/ake;->xa()Lo/ot;

    move-result-object v0

    iget-object v1, p0, Lo/ake;->bIh:Lo/adj;

    invoke-virtual {v0, v1}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 194
    invoke-super {p0}, Lo/ado;->onDestroy()V

    .line 195
    return-void
.end method

.method public onEventMainThread(Lo/aai;)V
    .locals 3

    .line 152
    sget-object v0, Lo/ake$1;->bnK:[I

    iget-object v1, p1, Lo/aai;->bsV:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lo/ake;->wZ()Lo/vn;

    move-result-object v0

    invoke-virtual {v0}, Lo/vn;->tS()Ljava/lang/String;

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/ww;

    iget-object v2, v0, Lo/ww;->boA:Ltv/periscope/android/api/PsUser;

    .line 163
    iget-object v0, p0, Lo/ake;->bIi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ake;->bIi:Ljava/lang/String;

    iget-object v1, v2, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0, v2}, Lo/ake;->ˏ(Ltv/periscope/android/api/PsUser;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onEventMainThread(Lo/aak;)V
    .locals 2

    .line 136
    sget-object v0, Lo/ake$1;->brV:[I

    invoke-virtual {p1}, Lo/aak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    iget-object v0, p0, Lo/ake;->bIg:Lo/ajq;

    invoke-virtual {v0}, Lo/ajq;->notifyDataSetChanged()V

    .line 149
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
