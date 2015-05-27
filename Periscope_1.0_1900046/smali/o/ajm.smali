.class Lo/ajm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bHy:Lo/ajk;


# direct methods
.method constructor <init>(Lo/ajk;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lo/ajm;->bHy:Lo/ajk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 72
    iget-object v0, p0, Lo/ajm;->bHy:Lo/ajk;

    invoke-static {v0}, Lo/ajk;->ˋ(Lo/ajk;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lo/ajm;->bHy:Lo/ajk;

    invoke-static {v0}, Lo/ajk;->ˎ(Lo/ajk;)Lo/vn;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/vn;->ᴾ(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    :cond_0
    return-void
.end method
