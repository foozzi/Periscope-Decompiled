.class Lo/aka;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bIe:Lo/ajw;


# direct methods
.method constructor <init>(Lo/ajw;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lo/aka;->bIe:Lo/ajw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lo/aka;->bIe:Lo/ajw;

    invoke-static {v0}, Lo/ajw;->ˎ(Lo/ajw;)Lo/ajt;

    move-result-object v0

    invoke-virtual {v0}, Lo/ajt;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 240
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 230
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 234
    iget-object v0, p0, Lo/aka;->bIe:Lo/ajw;

    invoke-static {v0}, Lo/ajw;->ˎ(Lo/ajw;)Lo/ajt;

    move-result-object v0

    invoke-virtual {v0}, Lo/ajt;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 235
    return-void
.end method
