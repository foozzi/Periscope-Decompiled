.class public Lo/anl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final bNQ:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "sender"
    .end annotation
.end field

.field public final byp:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "body"
    .end annotation
.end field

.field public final timestamp:J
    .annotation runtime Lo/go;
        value = "timestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lo/anl;->bNQ:Ljava/lang/String;

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/anl;->timestamp:J

    .line 20
    iput-object p1, p0, Lo/anl;->byp:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anl;->byp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
