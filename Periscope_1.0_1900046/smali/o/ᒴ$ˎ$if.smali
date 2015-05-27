.class public Lo/ᒴ$ˎ$if;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᒴ$ˎ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private Cd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Lcom/google/android/gms/common/api/Scope;>;"
        }
    .end annotation
.end field

.field private Cs:Z


# virtual methods
.method public ন()Z
    .locals 1

    iget-boolean v0, p0, Lo/ᒴ$ˎ$if;->Cs:Z

    return v0
.end method

.method public প()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Set<Lcom/google/android/gms/common/api/Scope;>;"
        }
    .end annotation

    iget-object v0, p0, Lo/ᒴ$ˎ$if;->Cd:Ljava/util/Set;

    return-object v0
.end method
