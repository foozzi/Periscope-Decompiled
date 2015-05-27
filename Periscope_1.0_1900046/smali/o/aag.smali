.class public Lo/aag;
.super Lo/zo;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/zo<Ltv/periscope/android/api/PsUser;>;"
    }
.end annotation


# instance fields
.field protected bsI:Lo/aah;

.field protected bsJ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/aad;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lo/zo;-><init>(Lo/aad;)V

    .line 13
    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public vc()I
    .locals 3

    .line 34
    iget-object v0, p0, Lo/aag;->bnA:Lo/aad;

    iget-object v1, p0, Lo/aag;->bsJ:Ljava/lang/String;

    iget-object v2, p0, Lo/aag;->bsI:Lo/aah;

    invoke-virtual {v0, v1, v2}, Lo/aad;->ˊ(Ljava/lang/String;Lo/aah;)I

    move-result v0

    return v0
.end method

.method public ˊ(Lo/aah;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lo/aag;->bsI:Lo/aah;

    .line 17
    return-void
.end method

.method public Ị(Ljava/lang/String;)Lo/aah;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/aag;->bnA:Lo/aad;

    invoke-virtual {v0, p1}, Lo/aad;->זּ(Ljava/lang/String;)Lo/aah;

    move-result-object v0

    return-object v0
.end method

.method public ﯧ(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lo/aag;->bsJ:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public synthetic ﾅ(I)Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0, p1}, Lo/aag;->ﾝ(I)Ltv/periscope/android/api/PsUser;

    move-result-object v0

    return-object v0
.end method

.method public ﾝ(I)Ltv/periscope/android/api/PsUser;
    .locals 3

    .line 29
    iget-object v0, p0, Lo/aag;->bnA:Lo/aad;

    iget-object v1, p0, Lo/aag;->bsI:Lo/aah;

    iget-object v2, p0, Lo/aag;->bsJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lo/aad;->ˊ(Lo/aah;Ljava/lang/String;I)Ltv/periscope/android/api/PsUser;

    move-result-object v0

    return-object v0
.end method
