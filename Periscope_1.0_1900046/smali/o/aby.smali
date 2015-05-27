.class final Lo/aby;
.super Lo/ki;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic OC:Ljava/lang/String;

.field final synthetic bxl:Lo/acu;

.field final synthetic bxm:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/acu;Z)V
    .locals 0

    .line 89
    iput-object p1, p0, Lo/aby;->OC:Ljava/lang/String;

    iput-object p2, p0, Lo/aby;->bxl:Lo/acu;

    iput-boolean p3, p0, Lo/aby;->bxm:Z

    invoke-direct {p0}, Lo/ki;-><init>()V

    return-void
.end method


# virtual methods
.method public ˋ(Ljava/lang/String;Lo/fw;)V
    .locals 3

    .line 92
    const-string v0, "PsPubnub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState successCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lo/aby;->OC:Ljava/lang/String;

    iget-object v1, p0, Lo/aby;->bxl:Lo/acu;

    iget-boolean v2, p0, Lo/aby;->bxm:Z

    invoke-static {v0, v1, v2}, Lo/abx;->ˊ(Ljava/lang/String;Lo/acu;Z)V

    .line 94
    iget-object v0, p0, Lo/aby;->OC:Ljava/lang/String;

    invoke-static {v0}, Lo/abx;->ī(Ljava/lang/String;)V

    .line 95
    return-void
.end method
