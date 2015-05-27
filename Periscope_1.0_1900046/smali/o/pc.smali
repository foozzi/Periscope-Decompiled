.class final Lo/pc;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final Ut:Lo/pf;

.field final Uu:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<*>;"
        }
    .end annotation
.end field

.field Uv:Ljava/lang/String;

.field final method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Lo/pf;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/reflect/Method;Lo/pf;Ljava/lang/Class<*>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lo/pc;->method:Ljava/lang/reflect/Method;

    .line 29
    iput-object p2, p0, Lo/pc;->Ut:Lo/pf;

    .line 30
    iput-object p3, p0, Lo/pc;->Uu:Ljava/lang/Class;

    .line 31
    return-void
.end method

.method private declared-synchronized ca()V
    .locals 3

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lo/pc;->Uv:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    iget-object v0, p0, Lo/pc;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const/16 v0, 0x23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/pc;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const/16 v0, 0x28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/pc;->Uu:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/pc;->Uv:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 35
    instance-of v0, p1, Lo/pc;

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0}, Lo/pc;->ca()V

    .line 37
    move-object v0, p1

    check-cast v0, Lo/pc;

    move-object v2, v0

    .line 38
    invoke-direct {v2}, Lo/pc;->ca()V

    .line 40
    iget-object v0, p0, Lo/pc;->Uv:Ljava/lang/String;

    iget-object v1, v2, Lo/pc;->Uv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 59
    iget-object v0, p0, Lo/pc;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    return v0
.end method
