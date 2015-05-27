.class final Lo/ﻐ;
.super Lo/ﻏ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\ufecf<Ljava/lang/Boolean;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/ﻏ;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic ᔇ(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/ﻐ;->ᔈ(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected ᔈ(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    invoke-static {}, Lo/ﻏ;->ヾ()Lo/ﻏ$if;

    move-result-object v0

    iget-object v1, p0, Lo/ﻐ;->Fl:Ljava/lang/String;

    iget-object v2, p0, Lo/ﻐ;->Fm:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lo/ﻏ$if;->ˊ(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
