.class public Lo/aja;
.super Lo/ado;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lo/amw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aja$1;
    }
.end annotation


# instance fields
.field private bFG:Lo/als;

.field private bGT:Landroid/app/ProgressDialog;

.field private bGV:Lo/alx;

.field private bGW:Lo/alw;

.field private bGX:Lo/ajb;

.field private bnA:Lo/aad;

.field private byD:Lo/alo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/ado;-><init>()V

    .line 204
    return-void
.end method

.method private zW()V
    .locals 4

    .line 81
    const-string v0, "onboarding"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/aja;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 82
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    return-void
.end method

.method private zX()V
    .locals 6

    .line 175
    iget-object v4, p0, Lo/aja;->bGX:Lo/ajb;

    .line 176
    invoke-virtual {v4}, Lo/ajb;->zZ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lo/aja;->bGV:Lo/alx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/alx;->setChecked(Z)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lo/aja;->bGV:Lo/alx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/alx;->setChecked(Z)V

    .line 181
    :goto_0
    invoke-virtual {v4}, Lo/ajb;->Aa()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v5

    .line 182
    const/4 v0, 0x1

    if-ne v5, v0, :cond_1

    .line 183
    iget-object v0, p0, Lo/aja;->bGW:Lo/alw;

    const v1, 0x7f0600c8

    invoke-virtual {p0, v1}, Lo/aja;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/alw;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 185
    :cond_1
    iget-object v0, p0, Lo/aja;->bGW:Lo/alw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0600c7

    invoke-virtual {p0, v2, v1}, Lo/aja;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/alw;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/aja;->bFG:Lo/als;

    invoke-interface {v0}, Lo/als;->wY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lo/aja;->setResult(I)V

    .line 99
    invoke-super {p0}, Lo/ado;->onBackPressed()V

    .line 100
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 140
    :sswitch_0
    iget-object v0, p0, Lo/aja;->bGV:Lo/alx;

    invoke-virtual {v0}, Lo/alx;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lo/aja;->bGX:Lo/ajb;

    invoke-virtual {v0}, Lo/ajb;->zY()V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lo/aja;->bGX:Lo/ajb;

    invoke-virtual {v0}, Lo/ajb;->selectAll()V

    .line 145
    :goto_0
    iget-object v0, p0, Lo/aja;->bGX:Lo/ajb;

    invoke-virtual {v0}, Lo/ajb;->notifyDataSetChanged()V

    .line 146
    invoke-direct {p0}, Lo/aja;->zX()V

    .line 147
    goto :goto_1

    .line 150
    :sswitch_1
    invoke-virtual {p0}, Lo/aja;->onBackPressed()V

    .line 151
    goto :goto_1

    .line 154
    :sswitch_2
    iget-object v0, p0, Lo/aja;->bGX:Lo/ajb;

    invoke-virtual {v0}, Lo/ajb;->Aa()Ljava/util/HashSet;

    move-result-object v2

    .line 155
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lo/aja;->wZ()Lo/vn;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/vn;->ˊ(Ljava/util/HashSet;)Ljava/lang/String;

    .line 157
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/aja;->bGT:Landroid/app/ProgressDialog;

    .line 158
    iget-object v0, p0, Lo/aja;->bGT:Landroid/app/ProgressDialog;

    const v1, 0x7f0600c9

    invoke-virtual {p0, v1}, Lo/aja;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lo/aja;->bGT:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 160
    iget-object v0, p0, Lo/aja;->bGT:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 161
    iget-object v0, p0, Lo/aja;->bGT:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1

    .line 163
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lo/aja;->setResult(I)V

    .line 164
    invoke-virtual {p0}, Lo/aja;->finish()V

    .line 166
    .line 172
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b00d1 -> :sswitch_1
        0x7f0b00d2 -> :sswitch_2
        0x7f0b0101 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 43
    invoke-super {p0, p1}, Lo/ado;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v0

    iput-object v0, p0, Lo/aja;->bnA:Lo/aad;

    .line 47
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lo/aja;->setContentView(I)V

    .line 49
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lo/aja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alo;

    iput-object v0, p0, Lo/aja;->byD:Lo/alo;

    .line 50
    new-instance v0, Lo/adj;

    invoke-virtual {p0}, Lo/aja;->wZ()Lo/vn;

    move-result-object v1

    iget-object v2, p0, Lo/aja;->bnA:Lo/aad;

    iget-object v3, p0, Lo/aja;->byD:Lo/alo;

    invoke-direct {v0, p0, v1, v2, v3}, Lo/adj;-><init>(Landroid/content/Context;Lo/vn;Lo/aad;Lo/alo;)V

    iput-object v0, p0, Lo/aja;->bFG:Lo/als;

    .line 51
    invoke-virtual {p0}, Lo/aja;->xa()Lo/ot;

    move-result-object v0

    iget-object v1, p0, Lo/aja;->bFG:Lo/als;

    invoke-virtual {v0, v1}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lo/aja;->byD:Lo/alo;

    iget-object v1, p0, Lo/aja;->bFG:Lo/als;

    invoke-virtual {v0, v1}, Lo/alo;->setDelegate(Lo/als;)V

    .line 54
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lo/aja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    move-object v4, v0

    .line 55
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$ʻ;)V

    .line 56
    new-instance v5, Lo/ajb;

    new-instance v0, Lo/aab;

    iget-object v1, p0, Lo/aja;->bnA:Lo/aad;

    invoke-direct {v0, v1}, Lo/aab;-><init>(Lo/aad;)V

    invoke-direct {v5, p0, v0, p0}, Lo/ajb;-><init>(Landroid/content/Context;Lo/zo;Lo/amw;)V

    .line 58
    iput-object v5, p0, Lo/aja;->bGX:Lo/ajb;

    .line 60
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$if;)V

    .line 62
    const v0, 0x7f0b0101

    invoke-virtual {p0, v0}, Lo/aja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alx;

    iput-object v0, p0, Lo/aja;->bGV:Lo/alx;

    .line 63
    iget-object v0, p0, Lo/aja;->bGV:Lo/alx;

    invoke-virtual {v0, p0}, Lo/alx;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f0b00d2

    invoke-virtual {p0, v0}, Lo/aja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alw;

    iput-object v0, p0, Lo/aja;->bGW:Lo/alw;

    .line 65
    iget-object v0, p0, Lo/aja;->bGW:Lo/alw;

    invoke-virtual {v0, p0}, Lo/alw;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-direct {p0}, Lo/aja;->zX()V

    .line 68
    const v0, 0x7f0b00d1

    invoke-virtual {p0, v0}, Lo/aja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lo/aja;->wZ()Lo/vn;

    move-result-object v0

    invoke-virtual {v0}, Lo/vn;->tW()Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lo/aja;->zW()V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lo/aja;->xa()Lo/ot;

    move-result-object v0

    iget-object v1, p0, Lo/aja;->bFG:Lo/als;

    invoke-virtual {v0, v1}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 90
    invoke-super {p0}, Lo/ado;->onDestroy()V

    .line 91
    return-void
.end method

.method public onEventMainThread(Lo/aai;)V
    .locals 2

    .line 191
    sget-object v0, Lo/aja$1;->bnK:[I

    iget-object v1, p1, Lo/aai;->bsV:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 193
    :sswitch_0
    iget-object v0, p0, Lo/aja;->bGT:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 194
    iget-object v0, p0, Lo/aja;->bnA:Lo/aad;

    invoke-virtual {v0}, Lo/aad;->vg()V

    .line 195
    invoke-virtual {p0}, Lo/aja;->wZ()Lo/vn;

    move-result-object v0

    invoke-virtual {v0}, Lo/vn;->tW()Ljava/lang/String;

    .line 196
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lo/aja;->setResult(I)V

    .line 197
    invoke-virtual {p0}, Lo/aja;->finish()V

    .line 198
    goto :goto_0

    .line 201
    :sswitch_1
    iget-object v0, p0, Lo/aja;->bGX:Lo/ajb;

    invoke-virtual {v0}, Lo/ajb;->selectAll()V

    .line 202
    iget-object v0, p0, Lo/aja;->bGX:Lo/ajb;

    invoke-virtual {v0}, Lo/ajb;->notifyDataSetChanged()V

    .line 203
    invoke-direct {p0}, Lo/aja;->zX()V

    .line 207
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method public wY()Z
    .locals 1

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public ƚ(Ljava/lang/String;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lo/aja;->bFG:Lo/als;

    invoke-interface {v0, p1}, Lo/als;->ƚ(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public ʾ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 124
    return-void
.end method

.method public ﭕ(Ljava/lang/String;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lo/aja;->bGX:Lo/ajb;

    invoke-virtual {v0, p1}, Lo/ajb;->ᓭ(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lo/aja;->bGX:Lo/ajb;

    invoke-virtual {v0}, Lo/ajb;->notifyDataSetChanged()V

    .line 111
    invoke-direct {p0}, Lo/aja;->zX()V

    .line 112
    return-void
.end method

.method public ﭜ(Ljava/lang/String;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lo/aja;->bGX:Lo/ajb;

    invoke-virtual {v0, p1}, Lo/ajb;->ᓭ(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lo/aja;->bGX:Lo/ajb;

    invoke-virtual {v0}, Lo/ajb;->notifyDataSetChanged()V

    .line 118
    invoke-direct {p0}, Lo/aja;->zX()V

    .line 119
    return-void
.end method

.method public ﭤ(Ljava/lang/String;)V
    .locals 0

    .line 129
    return-void
.end method
