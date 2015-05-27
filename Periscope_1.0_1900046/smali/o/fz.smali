.class public final Lo/fz;
.super Lo/fw;
.source ""


# instance fields
.field private final Kv:Lo/hk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/hk<Ljava/lang/String;Lo/fw;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lo/fw;-><init>()V

    .line 33
    new-instance v0, Lo/hk;

    invoke-direct {v0}, Lo/hk;-><init>()V

    iput-object v0, p0, Lo/fz;->Kv:Lo/hk;

    return-void
.end method

.method private ᵀ(Ljava/lang/Object;)Lo/fw;
    .locals 1

    .line 122
    if-nez p1, :cond_0

    sget-object v0, Lo/fy;->Ku:Lo/fy;

    goto :goto_0

    :cond_0
    new-instance v0, Lo/gc;

    invoke-direct {v0, p1}, Lo/gc;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lo/fw;>;>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lo/fz;->Kv:Lo/hk;

    invoke-virtual {v0}, Lo/hk;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 187
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lo/fz;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lo/fz;

    iget-object v0, v0, Lo/fz;->Kv:Lo/hk;

    iget-object v1, p0, Lo/fz;->Kv:Lo/hk;

    invoke-virtual {v0, v1}, Lo/hk;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1

    .line 142
    iget-object v0, p0, Lo/fz;->Kv:Lo/hk;

    invoke-virtual {v0, p1}, Lo/hk;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 193
    iget-object v0, p0, Lo/fz;->Kv:Lo/hk;

    invoke-virtual {v0}, Lo/hk;->hashCode()I

    move-result v0

    return v0
.end method

.method public ʿ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 79
    invoke-direct {p0, p2}, Lo/fz;->ᵀ(Ljava/lang/Object;)Lo/fw;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo/fz;->ˊ(Ljava/lang/String;Lo/fw;)V

    .line 80
    return-void
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .line 90
    invoke-direct {p0, p2}, Lo/fz;->ᵀ(Ljava/lang/Object;)Lo/fw;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo/fz;->ˊ(Ljava/lang/String;Lo/fw;)V

    .line 91
    return-void
.end method

.method public ˊ(Ljava/lang/String;Lo/fw;)V
    .locals 1

    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lo/fy;->Ku:Lo/fy;

    .line 57
    :cond_0
    iget-object v0, p0, Lo/fz;->Kv:Lo/hk;

    invoke-virtual {v0, p1, p2}, Lo/hk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public ۦ(Ljava/lang/String;)Lo/fw;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/fz;->Kv:Lo/hk;

    invoke-virtual {v0, p1}, Lo/hk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    return-object v0
.end method

.method public เ(Ljava/lang/String;)Lo/fw;
    .locals 1

    .line 152
    iget-object v0, p0, Lo/fz;->Kv:Lo/hk;

    invoke-virtual {v0, p1}, Lo/hk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    return-object v0
.end method

.method public Ꭵ(Ljava/lang/String;)Lo/gc;
    .locals 1

    .line 162
    iget-object v0, p0, Lo/fz;->Kv:Lo/hk;

    invoke-virtual {v0, p1}, Lo/hk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/gc;

    return-object v0
.end method
