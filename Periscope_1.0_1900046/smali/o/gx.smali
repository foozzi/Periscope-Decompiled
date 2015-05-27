.class Lo/gx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ho;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/ho<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic KJ:Ljava/lang/reflect/Type;

.field final synthetic KK:Lo/gt;

.field private final KL:Lo/hr;

.field final synthetic KM:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lo/gt;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 1

    .line 202
    iput-object p1, p0, Lo/gx;->KK:Lo/gt;

    iput-object p2, p0, Lo/gx;->KM:Ljava/lang/Class;

    iput-object p3, p0, Lo/gx;->KJ:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-static {}, Lo/hr;->H()Lo/hr;

    move-result-object v0

    iput-object v0, p0, Lo/gx;->KL:Lo/hr;

    return-void
.end method


# virtual methods
.method public C()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 207
    :try_start_0
    iget-object v0, p0, Lo/gx;->KL:Lo/hr;

    iget-object v1, p0, Lo/gx;->KM:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lo/hr;->ʾ(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 208
    return-object v3

    .line 209
    :catch_0
    move-exception v3

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to invoke no-args constructor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/gx;->KJ:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Register an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
