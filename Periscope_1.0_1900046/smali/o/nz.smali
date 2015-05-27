.class public Lo/nz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/nz$if;
    }
.end annotation


# instance fields
.field private final RN:Lo/nw;
    .annotation runtime Lo/go;
        value = "event_namespace"
    .end annotation
.end field

.field private final RO:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "ts"
    .end annotation
.end field

.field private final RP:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "format_version"
    .end annotation
.end field

.field private final category:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "_category_"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/nw;J)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lo/nz;->category:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lo/nz;->RN:Lo/nw;

    .line 43
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/nz;->RO:Ljava/lang/String;

    .line 44
    const-string v0, "2"

    iput-object v0, p0, Lo/nz;->RP:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 59
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 60
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_2
    move-object v0, p1

    check-cast v0, Lo/nz;

    move-object v2, v0

    .line 64
    iget-object v0, p0, Lo/nz;->category:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/nz;->category:Ljava/lang/String;

    iget-object v1, v2, Lo/nz;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_3
    iget-object v0, v2, Lo/nz;->category:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 66
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_4
    iget-object v0, p0, Lo/nz;->RN:Lo/nw;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/nz;->RN:Lo/nw;

    iget-object v1, v2, Lo/nz;->RN:Lo/nw;

    invoke-virtual {v0, v1}, Lo/nw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_5
    iget-object v0, v2, Lo/nz;->RN:Lo/nw;

    if-eqz v0, :cond_6

    .line 70
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_6
    iget-object v0, p0, Lo/nz;->RP:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lo/nz;->RP:Ljava/lang/String;

    iget-object v1, v2, Lo/nz;->RP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_7
    iget-object v0, v2, Lo/nz;->RP:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 74
    :goto_2
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_8
    iget-object v0, p0, Lo/nz;->RO:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lo/nz;->RO:Ljava/lang/String;

    iget-object v1, v2, Lo/nz;->RO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_9
    iget-object v0, v2, Lo/nz;->RO:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 77
    :goto_3
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 85
    iget-object v0, p0, Lo/nz;->RN:Lo/nw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/nz;->RN:Lo/nw;

    invoke-virtual {v0}, Lo/nw;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 86
    :goto_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/nz;->RO:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/nz;->RO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int v2, v0, v1

    .line 87
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/nz;->RP:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/nz;->RP:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int v2, v0, v1

    .line 88
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/nz;->category:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/nz;->category:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int v2, v0, v1

    .line 89
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event_namespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/nz;->RN:Lo/nw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/nz;->RO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", format_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/nz;->RP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _category_="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/nz;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
