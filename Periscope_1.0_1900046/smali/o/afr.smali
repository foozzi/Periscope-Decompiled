.class Lo/afr;
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

    .line 99
    iput-object p1, p0, Lo/afr;->bCH:Lo/afq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 102
    sget-object v0, Lo/afq$1;->bCI:[I

    iget-object v1, p0, Lo/afr;->bCH:Lo/afq;

    invoke-static {v1}, Lo/afq;->ˊ(Lo/afq;)Lo/afq$if;

    move-result-object v1

    invoke-virtual {v1}, Lo/afq$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 104
    :sswitch_0
    iget-object v0, p0, Lo/afr;->bCH:Lo/afq;

    const v1, 0x7f06003b

    const v2, 0x7f06003a

    invoke-static {v0, v1, v2}, Lo/afq;->ˊ(Lo/afq;II)V

    .line 106
    goto :goto_1

    .line 109
    :sswitch_1
    iget-object v0, p0, Lo/afr;->bCH:Lo/afq;

    const v1, 0x7f060031

    const v2, 0x7f060030

    invoke-static {v0, v1, v2}, Lo/afq;->ˊ(Lo/afq;II)V

    .line 111
    goto :goto_1

    .line 114
    :goto_0
    iget-object v0, p0, Lo/afr;->bCH:Lo/afq;

    invoke-virtual {v0}, Lo/afq;->yT()V

    .line 118
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method
