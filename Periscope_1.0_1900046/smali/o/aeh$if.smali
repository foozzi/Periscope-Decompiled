.class public Lo/aeh$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aeh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aeh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/aeh<Ljava/util/List<Lo/adv;>;>;"
    }
.end annotation


# instance fields
.field private final bAd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/adv;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/adv;>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lo/aeh$if;->bAd:Ljava/util/List;

    .line 73
    return-void
.end method


# virtual methods
.method public xy()Lo/aeh$ʻ;
    .locals 1

    .line 77
    sget-object v0, Lo/aeh$ʻ;->bAq:Lo/aeh$ʻ;

    return-object v0
.end method

.method public xz()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lo/adv;>;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lo/aeh$if;->bAd:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
