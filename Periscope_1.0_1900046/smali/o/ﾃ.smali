.class Lo/ﾃ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ɽ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﾃ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u027d<Lo/\u1d68;Lo/\u1d68;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public ˊ(Lo/ᵨ;II)Lo/Į;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u1d68;II)Lo/\u012e<Lo/\u1d68;>;"
        }
    .end annotation

    .line 12
    new-instance v0, Lo/ﾃ$if;

    invoke-direct {v0, p1}, Lo/ﾃ$if;-><init>(Lo/ᵨ;)V

    return-object v0
.end method

.method public synthetic ˎ(Ljava/lang/Object;II)Lo/Į;
    .locals 1

    .line 8
    move-object v0, p1

    check-cast v0, Lo/ᵨ;

    invoke-virtual {p0, v0, p2, p3}, Lo/ﾃ;->ˊ(Lo/ᵨ;II)Lo/Į;

    move-result-object v0

    return-object v0
.end method
