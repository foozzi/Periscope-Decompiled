.class Lo/ᕻ$ˋ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᕻ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cb"
.end annotation


# instance fields
.field final synthetic fa:Lo/ᕻ;


# direct methods
.method constructor <init>(Lo/ᕻ;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lo/ᕻ$ˋ;->fa:Lo/ᕻ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˋ(Lo/ເ;)Lo/ເ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:Ljava/lang/Object;X:Lo/\u0ec0<TA;***>;>(TX;)TX;"
        }
    .end annotation

    .line 782
    iget-object v0, p0, Lo/ᕻ$ˋ;->fa:Lo/ᕻ;

    invoke-static {v0}, Lo/ᕻ;->ʻ(Lo/ᕻ;)Lo/ᕻ$if;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lo/ᕻ$ˋ;->fa:Lo/ᕻ;

    invoke-static {v0}, Lo/ᕻ;->ʻ(Lo/ᕻ;)Lo/ᕻ$if;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/ᕻ$if;->ˊ(Lo/ເ;)V

    .line 785
    :cond_0
    return-object p1
.end method
