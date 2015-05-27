.class public Lo/aaa;
.super Lo/aag;
.source ""


# direct methods
.method public constructor <init>(Lo/aad;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lo/aag;-><init>(Lo/aad;)V

    .line 9
    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public vc()I
    .locals 1

    .line 18
    iget-object v0, p0, Lo/aaa;->bnA:Lo/aad;

    invoke-virtual {v0}, Lo/aad;->vj()I

    move-result v0

    return v0
.end method

.method public synthetic ﾅ(I)Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p0, p1}, Lo/aaa;->ﾝ(I)Ltv/periscope/android/api/PsUser;

    move-result-object v0

    return-object v0
.end method

.method public ﾝ(I)Ltv/periscope/android/api/PsUser;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/aaa;->bnA:Lo/aad;

    invoke-virtual {v0, p1}, Lo/aad;->Ĺ(I)Ltv/periscope/android/api/PsUser;

    move-result-object v0

    return-object v0
.end method
