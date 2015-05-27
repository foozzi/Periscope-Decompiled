.class Lo/ʱ;
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
.field final synthetic cH:Lo/ɔ;


# direct methods
.method constructor <init>(Lo/ɔ;)V
    .locals 0

    .line 1611
    iput-object p1, p0, Lo/ʱ;->cH:Lo/ɔ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1621
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1613
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1617
    iget-object v0, p0, Lo/ʱ;->cH:Lo/ɔ;

    invoke-static {v0, p1}, Lo/ɔ;->ˊ(Lo/ɔ;Ljava/lang/CharSequence;)V

    .line 1618
    return-void
.end method
