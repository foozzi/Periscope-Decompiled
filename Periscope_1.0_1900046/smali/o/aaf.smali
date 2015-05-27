.class public Lo/aaf;
.super Lo/zo;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/zo<Ljava/lang/Object;>;"
    }
.end annotation


# instance fields
.field private final bsI:Lo/aah;

.field private final bsJ:Ljava/lang/String;

.field private final bsK:Lo/aad$if;


# direct methods
.method public constructor <init>(Lo/aad;)V
    .locals 2

    .line 11
    invoke-direct {p0, p1}, Lo/zo;-><init>(Lo/aad;)V

    .line 13
    sget-object v0, Lo/aah;->bsL:Lo/aah;

    iput-object v0, p0, Lo/aaf;->bsI:Lo/aah;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lo/aaf;->bsJ:Ljava/lang/String;

    .line 15
    new-instance v0, Lo/aad$if;

    iget-object v1, p0, Lo/aaf;->bsI:Lo/aah;

    invoke-direct {v0, v1}, Lo/aad$if;-><init>(Lo/aah;)V

    iput-object v0, p0, Lo/aaf;->bsK:Lo/aad$if;

    .line 16
    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public vc()I
    .locals 3

    .line 29
    iget-object v0, p0, Lo/aaf;->bnA:Lo/aad;

    iget-object v1, p0, Lo/aaf;->bsJ:Ljava/lang/String;

    iget-object v2, p0, Lo/aaf;->bsI:Lo/aah;

    invoke-virtual {v0, v1, v2}, Lo/aad;->ˊ(Ljava/lang/String;Lo/aah;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public ﾅ(I)Ljava/lang/Object;
    .locals 4

    .line 20
    if-nez p1, :cond_0

    .line 21
    iget-object v0, p0, Lo/aaf;->bsK:Lo/aad$if;

    return-object v0

    .line 23
    :cond_0
    iget-object v0, p0, Lo/aaf;->bnA:Lo/aad;

    iget-object v1, p0, Lo/aaf;->bsI:Lo/aah;

    iget-object v2, p0, Lo/aaf;->bsJ:Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lo/aad;->ˊ(Lo/aah;Ljava/lang/String;I)Ltv/periscope/android/api/PsUser;

    move-result-object v0

    return-object v0
.end method
