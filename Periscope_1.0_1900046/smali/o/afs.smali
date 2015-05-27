.class Lo/afs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bCH:Lo/afq;


# direct methods
.method constructor <init>(Lo/afq;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lo/afs;->bCH:Lo/afq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 124
    sget-object v0, Lo/afq$1;->bCJ:[I

    iget-object v1, p0, Lo/afs;->bCH:Lo/afq;

    invoke-static {v1}, Lo/afq;->ˋ(Lo/afq;)Lo/afq$ˊ;

    move-result-object v1

    invoke-virtual {v1}, Lo/afq$ˊ;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 126
    :sswitch_0
    iget-object v0, p0, Lo/afs;->bCH:Lo/afq;

    invoke-static {v0}, Lo/afq;->ˎ(Lo/afq;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 127
    goto :goto_0

    .line 130
    :sswitch_1
    iget-object v0, p0, Lo/afs;->bCH:Lo/afq;

    invoke-static {v0}, Lo/afq;->ˎ(Lo/afq;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 131
    iget-object v0, p0, Lo/afs;->bCH:Lo/afq;

    invoke-static {v0}, Lo/afq;->ˎ(Lo/afq;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    iget-object v0, p0, Lo/afs;->bCH:Lo/afq;

    invoke-static {v0}, Lo/afq;->ˏ(Lo/afq;)Lo/afq$ˋ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lo/afs;->bCH:Lo/afq;

    invoke-static {v0}, Lo/afq;->ˏ(Lo/afq;)Lo/afq$ˋ;

    move-result-object v0

    invoke-interface {v0, v2}, Lo/afq$ˋ;->ۃ(Ljava/lang/String;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lo/afs;->bCH:Lo/afq;

    invoke-static {v0}, Lo/afq;->ˎ(Lo/afq;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method
