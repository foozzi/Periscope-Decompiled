.class public Lo/ano;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final bNR:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "room"
    .end annotation
.end field

.field public final byp:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "body"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lo/ano;->bNR:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ano;->byp:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leave:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ano;->bNR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
