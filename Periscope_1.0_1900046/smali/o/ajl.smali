.class Lo/ajl;
.super Lo/amj;
.source ""


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

    .line 59
    iput-object p1, p0, Lo/ajl;->bHy:Lo/ajk;

    invoke-direct {p0}, Lo/amj;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 62
    invoke-static {}, Lo/ajk;->Al()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/ajl;->bHy:Lo/ajk;

    invoke-static {v1}, Lo/ajk;->ˊ(Lo/ajk;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lo/ajk;->Am()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lo/akn;->ˊ(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 63
    return-void
.end method
