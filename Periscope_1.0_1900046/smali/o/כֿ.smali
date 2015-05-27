.class final Lo/כֿ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/כֿ$if;
    }
.end annotation


# instance fields
.field public final pB:Lo/ﮈ;

.field public final pC:Lo/כֿ$if;

.field public final pD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field public final pE:Ljava/lang/String;

.field public final pF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
        }
    .end annotation
.end field

.field private pG:Ljava/lang/String;

.field public final timestamp:J


# direct methods
.method private constructor <init>(Lo/ﮈ;JLo/כֿ$if;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb88;JLo/\ufb4d$if;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lo/כֿ;->pB:Lo/ﮈ;

    .line 77
    iput-wide p2, p0, Lo/כֿ;->timestamp:J

    .line 78
    iput-object p4, p0, Lo/כֿ;->pC:Lo/כֿ$if;

    .line 79
    iput-object p5, p0, Lo/כֿ;->pD:Ljava/util/Map;

    .line 80
    iput-object p6, p0, Lo/כֿ;->pE:Ljava/lang/String;

    .line 81
    iput-object p7, p0, Lo/כֿ;->pF:Ljava/util/Map;

    .line 82
    return-void
.end method

.method public static ˊ(Lo/ﮈ;)Lo/כֿ;
    .locals 2

    .line 44
    sget-object v0, Lo/כֿ$if;->pQ:Lo/כֿ$if;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lo/כֿ;->ˊ(Lo/ﮈ;Lo/כֿ$if;Ljava/util/Map;)Lo/כֿ;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Lo/ﮈ;Ljava/lang/String;)Lo/כֿ;
    .locals 2

    .line 48
    const-string v0, "sessionId"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 49
    sget-object v0, Lo/כֿ$if;->pO:Lo/כֿ$if;

    invoke-static {p0, v0, v1}, Lo/כֿ;->ˊ(Lo/ﮈ;Lo/כֿ$if;Ljava/util/Map;)Lo/כֿ;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Lo/ﮈ;Lo/כֿ$if;Landroid/app/Activity;)Lo/כֿ;
    .locals 3

    .line 38
    const-string v0, "activity"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 40
    invoke-static {p0, p1, v2}, Lo/כֿ;->ˊ(Lo/ﮈ;Lo/כֿ$if;Ljava/util/Map;)Lo/כֿ;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(Lo/ﮈ;Lo/כֿ$if;Ljava/util/Map;)Lo/כֿ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb88;Lo/\ufb4d$if;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lo/\ufb4d;"
        }
    .end annotation

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lo/כֿ;->ˊ(Lo/ﮈ;Lo/כֿ$if;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Lo/כֿ;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(Lo/ﮈ;Lo/כֿ$if;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Lo/כֿ;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb88;Lo/\ufb4d$if;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)Lo/\ufb4d;"
        }
    .end annotation

    .line 70
    new-instance v0, Lo/כֿ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lo/כֿ;-><init>(Lo/ﮈ;JLo/כֿ$if;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static ˋ(Lo/ﮈ;Ljava/lang/String;)Lo/כֿ;
    .locals 2

    .line 53
    const-string v0, "sessionId"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 54
    sget-object v0, Lo/כֿ$if;->pP:Lo/כֿ$if;

    invoke-static {p0, v0, v1}, Lo/כֿ;->ˊ(Lo/ﮈ;Lo/כֿ$if;Ljava/util/Map;)Lo/כֿ;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 86
    iget-object v0, p0, Lo/כֿ;->pG:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lo/כֿ;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/כֿ;->pC:Lo/כֿ$if;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/כֿ;->pD:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/כֿ;->pE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/כֿ;->pF:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/כֿ;->pB:Lo/ﮈ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/כֿ;->pG:Ljava/lang/String;

    .line 98
    :cond_0
    iget-object v0, p0, Lo/כֿ;->pG:Ljava/lang/String;

    return-object v0
.end method
