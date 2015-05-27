.class Lo/ait;
.super Lo/amj;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bGN:Lo/aiq;


# direct methods
.method constructor <init>(Lo/aiq;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lo/ait;->bGN:Lo/aiq;

    invoke-direct {p0}, Lo/amj;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 224
    iget-object v0, p0, Lo/ait;->bGN:Lo/aiq;

    invoke-static {v0}, Lo/aiq;->ˊ(Lo/aiq;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lo/ait;->bGN:Lo/aiq;

    invoke-static {v0}, Lo/aiq;->ˋ(Lo/aiq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lo/ait;->bGN:Lo/aiq;

    invoke-static {v0}, Lo/aiq;->ˎ(Lo/aiq;)V

    .line 228
    :cond_0
    return-void
.end method
