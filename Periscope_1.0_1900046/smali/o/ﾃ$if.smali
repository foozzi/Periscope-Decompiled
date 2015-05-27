.class Lo/ﾃ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Į;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﾃ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u012e<Lo/\u1d68;>;"
    }
.end annotation


# instance fields
.field private final kG:Lo/ᵨ;


# direct methods
.method public constructor <init>(Lo/ᵨ;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lo/ﾃ$if;->kG:Lo/ᵨ;

    .line 20
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 40
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/ﾃ$if;->kG:Lo/ᵨ;

    invoke-virtual {v0}, Lo/ᵨ;->ẛ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ˊ(Lo/ᔿ;)Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0, p1}, Lo/ﾃ$if;->ˏ(Lo/ᔿ;)Lo/ᵨ;

    move-result-object v0

    return-object v0
.end method

.method public ˏ(Lo/ᔿ;)Lo/ᵨ;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/ﾃ$if;->kG:Lo/ᵨ;

    return-object v0
.end method

.method public ב()V
    .locals 0

    .line 30
    return-void
.end method
