.class public Lo/aab;
.super Lo/zo;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/zo<Ljava/lang/Object;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/aad;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lo/zo;-><init>(Lo/aad;)V

    .line 8
    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public vc()I
    .locals 1

    .line 21
    iget-object v0, p0, Lo/aab;->bnA:Lo/aad;

    invoke-virtual {v0}, Lo/aad;->vi()I

    move-result v0

    return v0
.end method

.method public ﾅ(I)Ljava/lang/Object;
    .locals 3

    .line 12
    iget-object v0, p0, Lo/aab;->bnA:Lo/aad;

    invoke-virtual {v0, p1}, Lo/aad;->ĸ(I)Ljava/lang/Object;

    move-result-object v2

    .line 13
    instance-of v0, v2, Lo/aad$if;

    if-eqz v0, :cond_0

    .line 14
    return-object v2

    .line 16
    :cond_0
    iget-object v0, p0, Lo/aab;->bnA:Lo/aad;

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/aad;->נּ(Ljava/lang/String;)Ltv/periscope/android/api/PsUser;

    move-result-object v0

    return-object v0
.end method
