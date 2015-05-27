.class final Lo/ﻛ;
.super Lo/ﻏ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\ufecf<Ljava/lang/Long;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/ﻏ;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic ᔇ(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/ﻛ;->ᗮ(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected ᗮ(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    invoke-static {}, Lo/ﻏ;->ヾ()Lo/ﻏ$if;

    move-result-object v0

    iget-object v1, p0, Lo/ﻛ;->Fl:Ljava/lang/String;

    iget-object v2, p0, Lo/ﻛ;->Fm:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Lo/ﻏ$if;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
