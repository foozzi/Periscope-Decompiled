.class Lo/gv;
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
.field final synthetic KK:Lo/gt;


# direct methods
.method constructor <init>(Lo/gt;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lo/gv;->KK:Lo/gt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method