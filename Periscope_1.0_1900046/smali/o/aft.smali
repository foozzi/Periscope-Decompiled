.class Lo/aft;
.super Lo/amj;
.source ""


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

    .line 147
    iput-object p1, p0, Lo/aft;->bCH:Lo/afq;

    invoke-direct {p0}, Lo/amj;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 150
    iget-object v0, p0, Lo/aft;->bCH:Lo/afq;

    invoke-virtual {v0}, Lo/afq;->setCommentSendOrClose()V

    .line 151
    return-void
.end method
