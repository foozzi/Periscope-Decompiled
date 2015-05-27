.class abstract Lo/kl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected NQ:Ljava/util/Hashtable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(IILjava/util/Hashtable;)Lo/kl;
    .locals 1

    .line 12
    new-instance v0, Lo/km;

    invoke-direct {v0, p0, p1, p2}, Lo/km;-><init>(IILjava/util/Hashtable;)V

    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 0

    .line 16
    invoke-virtual {p0}, Lo/kl;->shutdown()V

    .line 17
    return-void
.end method

.method public abstract shutdown()V
.end method

.method public abstract ˊ(Ljava/lang/String;Ljava/util/Hashtable;)Lo/ko;
.end method
