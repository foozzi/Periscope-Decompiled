.class public Lo/lh;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field private Pw:Ljava/lang/String;

.field private Px:Lo/lg;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lo/lh;->Pw:Ljava/lang/String;

    .line 10
    sget-object v0, Lo/lg;->OQ:Lo/lg;

    iput-object v0, p0, Lo/lh;->Px:Lo/lg;

    .line 20
    iput-object p1, p0, Lo/lh;->Pw:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Lo/lg;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lo/lh;->Pw:Ljava/lang/String;

    .line 10
    sget-object v0, Lo/lg;->OQ:Lo/lg;

    iput-object v0, p0, Lo/lh;->Px:Lo/lg;

    .line 30
    iput-object p1, p0, Lo/lh;->Px:Lo/lg;

    .line 31
    return-void
.end method


# virtual methods
.method public aE()Lo/lg;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/lh;->Px:Lo/lg;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    iget-object v0, p0, Lo/lh;->Px:Lo/lg;

    invoke-virtual {v0}, Lo/lg;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    iget-object v0, p0, Lo/lh;->Pw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " . "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/lh;->Pw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    :cond_0
    return-object v2
.end method
